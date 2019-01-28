.class public Lc8/zng;
.super Ljava/lang/Object;
.source "AntEvaluator.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lc8/zng;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
