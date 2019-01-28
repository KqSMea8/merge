.class public Lc8/qLd;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pLd;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private geoLocationPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mobilePairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private standardPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lc8/qLd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/qLd;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lc8/pLd;)V
    .locals 3
    .param p1, "builder"    # Lc8/pLd;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/qLd;->standardPairs:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/qLd;->geoLocationPairs:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/qLd;->mobilePairs:Ljava/util/HashMap;

    .line 54
    invoke-direct {p0}, Lc8/qLd;->setOsType()V

    .line 55
    invoke-direct {p0}, Lc8/qLd;->setOsVersion()V

    .line 56
    invoke-direct {p0}, Lc8/qLd;->setDeviceModel()V

    .line 57
    invoke-direct {p0}, Lc8/qLd;->setDeviceVendor()V

    .line 59
    invoke-static {p1}, Lc8/pLd;->access$000(Lc8/pLd;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1}, Lc8/pLd;->access$000(Lc8/pLd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/qLd;->setContextualParams(Landroid/content/Context;)V

    .line 63
    :cond_0
    sget-object v0, Lc8/qLd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subject created successfully."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/yLd;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lc8/pLd;Lc8/oLd;)V
    .locals 0
    .param p1, "x0"    # Lc8/pLd;
    .param p2, "x1"    # Lc8/oLd;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lc8/qLd;-><init>(Lc8/pLd;)V

    return-void
.end method

.method private addToGeoLocationContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    :cond_1
    iget-object v0, p0, Lc8/qLd;->geoLocationPairs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_2
    return-void
.end method

.method private addToMobileContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lc8/qLd;->mobilePairs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    return-void
.end method

.method private setDeviceModel()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "dm"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/qLd;->addToMobileContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private setDeviceVendor()V
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "df"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/qLd;->addToMobileContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private setOsType()V
    .locals 3

    .prologue
    .line 162
    const-string/jumbo v0, "ot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc8/qLd;->addToMobileContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private setOsVersion()V
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "ov"

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/qLd;->addToMobileContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method


# virtual methods
.method public getSubject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lc8/qLd;->standardPairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSubjectLocation()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lc8/qLd;->geoLocationPairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSubjectMobile()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lc8/qLd;->mobilePairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public setCarrier(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-static {p1}, Lc8/ALd;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "carrier":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v1, "ca"

    invoke-direct {p0, v1, v0}, Lc8/qLd;->addToMobileContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method

.method public setContextualParams(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lc8/qLd;->setLocation(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0, p1}, Lc8/qLd;->setCarrier(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public setLocation(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p1}, Lc8/ALd;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 221
    .local v0, "location":Landroid/location/Location;
    if-nez v0, :cond_0

    .line 222
    sget-object v1, Lc8/qLd;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Location information not available."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string/jumbo v1, "la"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc8/qLd;->addToGeoLocationContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    const-string/jumbo v1, "lt"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc8/qLd;->addToGeoLocationContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    const-string/jumbo v1, "al"

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc8/qLd;->addToGeoLocationContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v1, "lla"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc8/qLd;->addToGeoLocationContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    const-string/jumbo v1, "speed"

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc8/qLd;->addToGeoLocationContext(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const-string/jumbo v1, "br"

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc8/qLd;->addToGeoLocationContext(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
