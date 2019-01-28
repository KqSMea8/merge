.class public Lc8/GRo;
.super Ljava/lang/Object;
.source "PaymentSwitch.java"


# instance fields
.field private switch_key:Ljava/lang/String;

.field private switch_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwitch_key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lc8/GRo;->switch_key:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitch_value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lc8/GRo;->switch_value:Ljava/lang/String;

    return-object v0
.end method

.method public setSwitch_key(Ljava/lang/String;)V
    .locals 0
    .param p1, "switch_key"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lc8/GRo;->switch_key:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSwitch_value(Ljava/lang/String;)V
    .locals 0
    .param p1, "switch_value"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/GRo;->switch_value:Ljava/lang/String;

    .line 28
    return-void
.end method
