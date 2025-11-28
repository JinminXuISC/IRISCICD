Class App.Test Extends %Persistent
{
    /// Description
    Property HelloTime As %String;
    ClassMethod SetHelloTime() As %Status
{
    // Get current system time in $H format
    Set nowH = $Horolog

    // Convert $H to standard timestamp string
    Set nowStr = $ZDATETIME(nowH, 3)   // 3 = yyyy-mm-dd hh:mm:ss

    // Create a new object
    Set obj = ..%New()
    Set obj.Hello = nowStr

    // Save to database
    Do obj.%Save()

    Quit $$$OK
}

}