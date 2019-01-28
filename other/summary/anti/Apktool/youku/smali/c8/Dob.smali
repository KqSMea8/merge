.class public Lc8/Dob;
.super Ljava/lang/Object;
.source "AliWeex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Eob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method


# virtual methods
.method public build()Lc8/Eob;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lc8/Eob;

    invoke-direct {v0}, Lc8/Eob;-><init>()V

    .line 266
    .local v0, "config":Lc8/Eob;
    iget-object v1, p0, Lc8/Dob;->share:Lc8/Qob;

    iput-object v1, v0, Lc8/Eob;->share:Lc8/Qob;

    .line 267
    iget-object v1, p0, Lc8/Dob;->user:Lc8/Sob;

    iput-object v1, v0, Lc8/Eob;->user:Lc8/Sob;

    .line 268
    iget-object v1, p0, Lc8/Dob;->event:Lc8/Lob;

    iput-object v1, v0, Lc8/Eob;->event:Lc8/Lob;

    .line 269
    iget-object v1, p0, Lc8/Dob;->pageInfo:Lc8/Pob;

    iput-object v1, v0, Lc8/Eob;->pageInfo:Lc8/Pob;

    .line 270
    iget-object v1, p0, Lc8/Dob;->alipay:Lc8/Job;

    iput-object v1, v0, Lc8/Eob;->alipay:Lc8/Job;

    .line 271
    iget-object v1, p0, Lc8/Dob;->navBar:Lc8/Oob;

    iput-object v1, v0, Lc8/Eob;->navBar:Lc8/Oob;

    .line 272
    iget-object v1, p0, Lc8/Dob;->configAdapter:Lc8/Hob;

    iput-object v1, v0, Lc8/Eob;->configAdapter:Lc8/Hob;

    .line 273
    iget-object v1, p0, Lc8/Dob;->festival:Lc8/Mob;

    iput-object v1, v0, Lc8/Eob;->festival:Lc8/Mob;

    .line 274
    iget-object v1, p0, Lc8/Dob;->imgLoaderAdapter:Lc8/EVf;

    iput-object v1, v0, Lc8/Eob;->imgLoaderAdapter:Lc8/EVf;

    .line 275
    iget-object v1, p0, Lc8/Dob;->httpAdapter:Lc8/DVf;

    iput-object v1, v0, Lc8/Eob;->httpAdapter:Lc8/DVf;

    .line 276
    iget-object v1, p0, Lc8/Dob;->initConfig:Lc8/RUf;

    iput-object v1, v0, Lc8/Eob;->initConfig:Lc8/RUf;

    .line 277
    return-object v0
.end method

.method public setAliPayModuleAdapter(Lc8/Job;)Lc8/Dob;
    .locals 0
    .param p1, "alipay"    # Lc8/Job;

    .prologue
    .line 230
    iput-object p1, p0, Lc8/Dob;->alipay:Lc8/Job;

    .line 231
    return-object p0
.end method

.method public setConfigAdapter(Lc8/Hob;)Lc8/Dob;
    .locals 0
    .param p1, "configAdapter"    # Lc8/Hob;

    .prologue
    .line 240
    iput-object p1, p0, Lc8/Dob;->configAdapter:Lc8/Hob;

    .line 241
    return-object p0
.end method

.method public setEventModuleAdapter(Lc8/Lob;)Lc8/Dob;
    .locals 0
    .param p1, "event"    # Lc8/Lob;

    .prologue
    .line 220
    iput-object p1, p0, Lc8/Dob;->event:Lc8/Lob;

    .line 221
    return-object p0
.end method

.method public setFestivalModuleAdapter(Lc8/Mob;)Lc8/Dob;
    .locals 0
    .param p1, "festival"    # Lc8/Mob;

    .prologue
    .line 245
    iput-object p1, p0, Lc8/Dob;->festival:Lc8/Mob;

    .line 246
    return-object p0
.end method

.method public setHttpAdapter(Lc8/DVf;)Lc8/Dob;
    .locals 0
    .param p1, "httpAdapter"    # Lc8/DVf;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/Dob;->httpAdapter:Lc8/DVf;

    .line 256
    return-object p0
.end method

.method public setImgLoaderAdapter(Lc8/EVf;)Lc8/Dob;
    .locals 0
    .param p1, "imgLoaderAdapter"    # Lc8/EVf;

    .prologue
    .line 250
    iput-object p1, p0, Lc8/Dob;->imgLoaderAdapter:Lc8/EVf;

    .line 251
    return-object p0
.end method

.method public setInitConfig(Lc8/RUf;)Lc8/Dob;
    .locals 0
    .param p1, "initConfig"    # Lc8/RUf;

    .prologue
    .line 260
    iput-object p1, p0, Lc8/Dob;->initConfig:Lc8/RUf;

    .line 261
    return-object p0
.end method

.method public setNavigationBarModuleAdapter(Lc8/Oob;)Lc8/Dob;
    .locals 0
    .param p1, "navBar"    # Lc8/Oob;

    .prologue
    .line 235
    iput-object p1, p0, Lc8/Dob;->navBar:Lc8/Oob;

    .line 236
    return-object p0
.end method

.method public setPageInfoModuleAdapter(Lc8/Pob;)Lc8/Dob;
    .locals 0
    .param p1, "pageInfo"    # Lc8/Pob;

    .prologue
    .line 225
    iput-object p1, p0, Lc8/Dob;->pageInfo:Lc8/Pob;

    .line 226
    return-object p0
.end method

.method public setShareModuleAdapter(Lc8/Qob;)Lc8/Dob;
    .locals 0
    .param p1, "share"    # Lc8/Qob;

    .prologue
    .line 210
    iput-object p1, p0, Lc8/Dob;->share:Lc8/Qob;

    .line 211
    return-object p0
.end method

.method public setUserModuleAdapter(Lc8/Sob;)Lc8/Dob;
    .locals 0
    .param p1, "user"    # Lc8/Sob;

    .prologue
    .line 215
    iput-object p1, p0, Lc8/Dob;->user:Lc8/Sob;

    .line 216
    return-object p0
.end method
