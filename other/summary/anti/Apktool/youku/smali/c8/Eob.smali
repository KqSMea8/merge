.class public Lc8/Eob;
.super Ljava/lang/Object;
.source "AliWeex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dob;
    }
.end annotation


# instance fields
.field alipay:Lc8/Job;

.field configAdapter:Lc8/Hob;

.field event:Lc8/Lob;

.field festival:Lc8/Mob;

.field httpAdapter:Lc8/DVf;

.field imgLoaderAdapter:Lc8/EVf;

.field initConfig:Lc8/RUf;

.field navBar:Lc8/Oob;

.field pageInfo:Lc8/Pob;

.field share:Lc8/Qob;

.field user:Lc8/Sob;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method getAliPayModuleAdapter()Lc8/Job;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lc8/Eob;->alipay:Lc8/Job;

    return-object v0
.end method

.method getConfigAdapter()Lc8/Hob;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/Eob;->configAdapter:Lc8/Hob;

    return-object v0
.end method

.method getEventModuleAdapter()Lc8/Lob;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Eob;->event:Lc8/Lob;

    return-object v0
.end method

.method getFestivalModuleAdapter()Lc8/Mob;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lc8/Eob;->festival:Lc8/Mob;

    return-object v0
.end method

.method getHttpAdapter()Lc8/DVf;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lc8/Eob;->httpAdapter:Lc8/DVf;

    return-object v0
.end method

.method getImgLoaderAdapter()Lc8/EVf;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lc8/Eob;->imgLoaderAdapter:Lc8/EVf;

    return-object v0
.end method

.method getInitConfig()Lc8/RUf;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lc8/Eob;->initConfig:Lc8/RUf;

    return-object v0
.end method

.method getNavigationBarModuleAdapter()Lc8/Oob;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lc8/Eob;->navBar:Lc8/Oob;

    return-object v0
.end method

.method getPageInfoModuleAdapter()Lc8/Pob;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lc8/Eob;->pageInfo:Lc8/Pob;

    return-object v0
.end method

.method getShareModuleAdapter()Lc8/Qob;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lc8/Eob;->share:Lc8/Qob;

    return-object v0
.end method

.method getUserModuleAdapter()Lc8/Sob;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lc8/Eob;->user:Lc8/Sob;

    return-object v0
.end method
