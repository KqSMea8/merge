.class public Lc8/Ang;
.super Lc8/zng;
.source "PushAntEvaluator.java"


# instance fields
.field private mExpressionEvaluator:Lc8/mng;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lc8/zng;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lc8/mng;

    invoke-direct {v0}, Lc8/mng;-><init>()V

    iput-object v0, p0, Lc8/Ang;->mExpressionEvaluator:Lc8/mng;

    .line 17
    invoke-static {}, Lc8/lng;->loadLocalCrowdInfo()V

    .line 18
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/Ang;->mExpressionEvaluator:Lc8/mng;

    invoke-virtual {v0, p1}, Lc8/mng;->evaluate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
