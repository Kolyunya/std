{
	'targets'	:	[
						{
							'target_name'		:	'test',
							'type'				:	'executable',
							'ldflags'			:	[
														'<(GTEST_OBJECT_FILE)',
													],
							'sources'			:	[
														'<(UNIT_TESTS_SOURCE_FILE)',
													],
							'include_dirs'		:	[
														'$(GTEST_HOME)/include/',
													],
							'conditions'		:	[
														[
															'OS == "linux"',
															{
																'ldflags'	:	[
																					'-lpthread',
																				],
															},
														],
													],
						},
						{
							'target_name'	:	'clean',
							'type'			:	'none',
							'actions'		:	[
													{
														'action_name'	:	'delete_build_artifacts',
														'inputs'		:	[
																				'targets.gypi',
																			],
														'outputs'		:	[
																				'phony',
																			],
														'action'		:	[
																				'python',
																				'<(SCRIPTS_DIR)/delete_build_artifacts.py',
																			],
														'message'		:	'Deleting build artifacts',
													},
												],
						},
					],
}