.class public Lc8/MPp;
.super Ljava/lang/Object;
.source "ANetworkCallFactory.java"

# interfaces
.implements Lc8/wPp;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lc8/MPp;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public newCall(Lc8/FPp;)Lc8/xPp;
    .locals 2
    .param p1, "request"    # Lc8/FPp;

    .prologue
    .line 24
    new-instance v0, Lc8/OPp;

    iget-object v1, p0, Lc8/MPp;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lc8/OPp;-><init>(Lc8/FPp;Landroid/content/Context;)V

    return-object v0
.end method
