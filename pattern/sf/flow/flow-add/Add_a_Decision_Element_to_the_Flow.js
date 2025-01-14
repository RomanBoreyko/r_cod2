Setup>flows>...>Toolbox>Elements>desicion
    Label 	Update or Create?
    API Name 	Update_or_Create
    New Outcome:
        Label 	Update Existing
    add condition
        {!update_toggle.value} 	Equals 	{!$GlobalConstant.True}
        {!Find_a_Match.} 	Is Null 	{!$GlobalConstant.False}
    Default Outcome
        Create New
done>save

