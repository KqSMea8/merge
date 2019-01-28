.class public abstract Lcom/taobao/accs/utl/RomInfoCollecter;
.super Ljava/lang/Object;
.source "RomInfoCollecter.java"


# instance fields
.field protected mNextCollecter:Lcom/taobao/accs/utl/RomInfoCollecter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCollecter()Lcom/taobao/accs/utl/RomInfoCollecter;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/taobao/accs/utl/HuaWeiRomCollecter;

    invoke-direct {v0}, Lcom/taobao/accs/utl/HuaWeiRomCollecter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract collect()Ljava/lang/String;
.end method
