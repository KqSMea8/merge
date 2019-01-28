.class public Lc8/aKj;
.super Ljava/lang/Object;
.source "CallRuleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleCall"
.end annotation


# instance fields
.field callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

.field percentage:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/ZJj;)V
    .locals 0
    .param p1, "x0"    # Lc8/ZJj;

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/aKj;-><init>()V

    return-void
.end method
