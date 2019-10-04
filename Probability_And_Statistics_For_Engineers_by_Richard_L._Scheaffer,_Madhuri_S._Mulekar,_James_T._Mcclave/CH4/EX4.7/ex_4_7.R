total_elecric_motors = 20
defect_free = 11
finish_defect = 8
assembly_defect = 3
defected_motors = total_elecric_motors - defect_free
finish_defect_and_assembly_defect = finish_defect +assembly_defect - defected_motors
finish_defect_and_assembly_defect
finish_defect_or_assembly_defect = defected_motors
finish_defect_or_assembly_defect
only_one_defect = finish_defect_or_assembly_defect - finish_defect_and_assembly_defect
only_one_defect

