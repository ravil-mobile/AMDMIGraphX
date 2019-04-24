
#include <migraphx/program.hpp>
#include <migraphx/iterator_for.hpp>
#include <migraphx/instruction.hpp>
#include <migraphx/op/add.hpp>
#include <migraphx/op/mul.hpp>
#include <sstream>
#include "test.hpp"
#include <basic_ops.hpp>

migraphx::program create_program()
{
    migraphx::program p;

    auto x = p.add_parameter("x", {migraphx::shape::int64_type});
    auto y = p.add_parameter("y", {migraphx::shape::int64_type});

    auto sum = p.add_instruction(sum_op{}, x, y);
    auto one = p.add_literal(1);
    p.add_instruction(sum_op{}, sum, one);

    return p;
}

TEST_CASE(program_equality)
{
    migraphx::program x = create_program();
    migraphx::program y = create_program();
    EXPECT(x == y);
}

TEST_CASE(program_copy)
{
    auto create_program_1 = [] {
        migraphx::program p;
        migraphx::shape s{migraphx::shape::float_type, {3, 4, 5}};
        std::vector<float> data(3 * 4 * 5);
        std::iota(data.begin(), data.end(), 1.0f);
        auto l2 = p.add_literal(migraphx::literal(s, data));
        auto p1 = p.add_parameter("x", s);
        auto po = p.add_outline(s);
        auto sum = p.add_instruction(migraphx::op::add{}, l2, p1);
        p.add_instruction(migraphx::op::mul{}, sum, po);

        return p;
    };

    {
        auto p1 = create_program_1();
        auto p2 = p1;
        EXPECT(p1 == p2);
    }

    {
        auto p1 = create_program_1();
        auto p2(p1);
        EXPECT(p1 == p2);
    }

    {
        auto p1 = create_program_1();
        auto p2 = create_program();
        p2 = p1;

        EXPECT(p1 == p2);
    }
}

int main(int argc, const char* argv[]) { test::run(argc, argv); }
