.class public Lc8/XK;
.super Ljava/lang/Object;
.source "StrategyInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/YK;->saveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YK;


# direct methods
.method constructor <init>(Lc8/YK;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lc8/XK;->this$0:Lc8/YK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lc8/XK;->this$0:Lc8/YK;

    invoke-static {v0}, Lc8/YK;->access$000(Lc8/YK;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lc8/XK;->this$0:Lc8/YK;

    iget-object v0, v0, Lc8/YK;->holder:Lc8/WK;

    invoke-virtual {v0}, Lc8/WK;->saveData()V

    .line 278
    :cond_0
    return-void
.end method
