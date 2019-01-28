.class public Lcom/taobao/accs/utl/HuaWeiRomCollecter;
.super Lcom/taobao/accs/utl/RomInfoCollecter;
.source "HuaWeiRomCollecter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/taobao/accs/utl/RomInfoCollecter;-><init>()V

    return-void
.end method


# virtual methods
.method public collect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getEmuiVersion()Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/taobao/accs/utl/HuaWeiRomCollecter;->mNextCollecter:Lcom/taobao/accs/utl/RomInfoCollecter;

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/taobao/accs/utl/HuaWeiRomCollecter;->mNextCollecter:Lcom/taobao/accs/utl/RomInfoCollecter;

    invoke-virtual {v1}, Lcom/taobao/accs/utl/RomInfoCollecter;->collect()Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_0
    return-object v0
.end method
