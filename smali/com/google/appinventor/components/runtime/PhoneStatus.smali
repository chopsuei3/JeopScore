.class public Lcom/google/appinventor/components/runtime/PhoneStatus;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PhoneStatus.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that returns information about the phone."
    iconName = "images/phoneip.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method public static GetWifiIpAddress()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the IP address of the phone in the form of a String"
    .end annotation

    .prologue
    .line 46
    sget-object v4, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    .local v3, wifiManager:Ljava/lang/Object;
    check-cast v3, Landroid/net/wifi/WifiManager;

    .end local v3           #wifiManager:Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 48
    .local v0, ip:Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 50
    .local v2, s_ipAddress:I
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/PhoneStatus;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, ipAddress:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 53
    .end local v1           #ipAddress:Ljava/lang/String;
    :cond_0
    const-string v1, "Error: No Wifi Connection"

    .restart local v1       #ipAddress:Ljava/lang/String;
    goto :goto_0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the phone is on Wifi, FALSE otherwise"
    .end annotation

    .prologue
    .line 59
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 61
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 65
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method
