.class public Lc8/ex;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kx;


# direct methods
.method constructor <init>(Lc8/kx;)V
    .locals 0
    .param p1, "this$0"    # Lc8/kx;

    .prologue
    .line 220
    iput-object p1, p0, Lc8/ex;->this$0:Lc8/kx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lc8/ex;->this$0:Lc8/kx;

    invoke-virtual {v0}, Lc8/kx;->showOverflowMenu()Z

    .line 223
    return-void
.end method
