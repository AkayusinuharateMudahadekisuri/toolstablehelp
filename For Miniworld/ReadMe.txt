Option In This Table Help

toolsconfig===========================================
toolsconfig.version(<numberoftype>):
    <numberoftype>
        0: version type one(v.v.v)
        1: version type two(vvvvvvvv-Vv)
        2: version type three(vv.vv.vv)
    </numberoftype>
======================================================

text==================================================
text.<option>(<optionforoption>)
    <option>
        print(<string>)                                   : print any value to testbox
        chat(<string>, <target>)                          : chat any value into the chat box for any player included in <target>
        sendchat(<string>, <target>)                      : chat any value to the chat box on behalf of that player and for any player included in <target>
        color(<hexcolorvalue>)                            : return the type to any color string
        colorchat(<string>, <hexcolorvalue>, <target>)    : chat any value into the chat box with color for any player included in <target>
        colorsendchat(<string>, <hexcolorvalue>, <target>): chat any value to the chat box with color and on behalf of that player and for any player included in <target>
        effect(<numberoftype>)                            : return the type to any effect string
            <numberoftype>
                0: none
                1: gentle flashing
                2: strong flashing
            </numberoftype>
        run(<codeneedtorun>)                              : run the lua code in <codeneedtorun>
    </option>
======================================================

tables================================================
tables.<option>(<optionforoption>)
    <option>
        printallentries(<tablename>) : print all entries in the current table in <tablename>
        clearallentries(<tablename>) : clear all entries in the current table in <tablename>
        chatallentries(<tablename>)  : chat all entries in the current table in <tablename>
    </option>
======================================================

encode================================================
encode.<typeforencode>(<optionofthattype>)
    <typeforencode>
        base64(<code>)               : return the encode string for base64 with the code in <code>
    </typeforencode>
======================================================

decode================================================
decode.<typefordecode>(<optionofthattype>)
    <typefordecode>
        base64(<encodecode>)         : return the decode string for base64 with the encode code in <encodecode>
    </typefordecode>
======================================================