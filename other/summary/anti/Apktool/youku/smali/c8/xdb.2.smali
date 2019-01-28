.class public abstract Lc8/xdb;
.super Landroid/os/AsyncTask;
.source "CompositionLoader.java"

# interfaces
.implements Lc8/Zbb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;",
        "Ljava/lang/Void;",
        "Lc8/kcb;",
        ">;",
        "Lc8/Zbb;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lc8/xdb;, "Lcom/airbnb/lottie/model/CompositionLoader<TParams;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lc8/xdb;, "Lcom/airbnb/lottie/model/CompositionLoader<TParams;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/xdb;->cancel(Z)Z

    .line 12
    return-void
.end method
