describe("Asset provider") in [
	it must "pass the basic test" in [
		OPERATION `get the result` with { parameter: 1 } 
	],
	it should "do other thing" withTags ['a','b'] in [
		OPERATION `test` with variable assert [
			$ mustEqual $ * 1,
			$ mustContainKey 'test',
			$ mustContain true,
			null mustNotBeLike false,
			{} as Object is Object,
			true is Boolean
		]
	],
	"it" should "fail" in [
		assert(true == false and 0 > 1 or x mustEqual 3)
	] 
]