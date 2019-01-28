.class public Lc8/hYf;
.super Ljava/lang/Object;
.source "DOMActionContextImpl.java"

# interfaces
.implements Lc8/GYf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oYf;->layout(Lc8/HYf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oYf;


# direct methods
.method constructor <init>(Lc8/oYf;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lc8/hYf;->this$0:Lc8/oYf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lc8/HYf;)V
    .locals 1
    .param p1, "dom"    # Lc8/HYf;

    .prologue
    .line 203
    invoke-virtual {p1}, Lc8/HYf;->hasUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hYf;->this$0:Lc8/oYf;

    invoke-static {v0}, Lc8/oYf;->access$000(Lc8/oYf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Lc8/HYf;->layoutBefore()V

    goto :goto_0
.end method
