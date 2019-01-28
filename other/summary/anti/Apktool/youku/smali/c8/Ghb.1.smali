.class public Lc8/Ghb;
.super Ljava/lang/Object;
.source "InitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hhb;->asyncRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hhb;


# direct methods
.method constructor <init>(Lc8/Hhb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hhb;

    .prologue
    .line 276
    iput-object p1, p0, Lc8/Ghb;->this$0:Lc8/Hhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lc8/Ghb;->this$0:Lc8/Hhb;

    invoke-static {v0}, Lc8/Hhb;->access$000(Lc8/Hhb;)Lc8/wgb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lc8/Ghb;->this$0:Lc8/Hhb;

    invoke-static {v0}, Lc8/Hhb;->access$000(Lc8/Hhb;)Lc8/wgb;

    move-result-object v0

    invoke-interface {v0}, Lc8/wgb;->onSuccess()V

    .line 282
    :cond_0
    return-void
.end method
