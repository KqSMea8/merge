.class public Lc8/mYf;
.super Ljava/lang/Object;
.source "DOMActionContextImpl.java"

# interfaces
.implements Lc8/GYf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oYf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplyUpdateConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oYf;


# direct methods
.method private constructor <init>(Lc8/oYf;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lc8/mYf;->this$0:Lc8/oYf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/oYf;Lc8/hYf;)V
    .locals 0
    .param p1, "x0"    # Lc8/oYf;
    .param p2, "x1"    # Lc8/hYf;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lc8/mYf;-><init>(Lc8/oYf;)V

    return-void
.end method


# virtual methods
.method public accept(Lc8/HYf;)V
    .locals 3
    .param p1, "dom"    # Lc8/HYf;

    .prologue
    .line 265
    invoke-virtual {p1}, Lc8/HYf;->hasUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p1}, Lc8/HYf;->markUpdateSeen()V

    .line 267
    invoke-virtual {p1}, Lc8/HYf;->isYoung()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-virtual {p1}, Lc8/HYf;->clone()Lc8/HYf;

    move-result-object v0

    .line 269
    .local v0, "copy":Lc8/HYf;
    if-nez v0, :cond_1

    .line 289
    .end local v0    # "copy":Lc8/HYf;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v0    # "copy":Lc8/HYf;
    :cond_1
    iget-object v1, p0, Lc8/mYf;->this$0:Lc8/oYf;

    invoke-static {v1}, Lc8/oYf;->access$400(Lc8/oYf;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lc8/lYf;

    invoke-direct {v2, p0, v0}, Lc8/lYf;-><init>(Lc8/mYf;Lc8/HYf;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
