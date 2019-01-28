.class public Lc8/Fhb;
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
    .line 265
    iput-object p1, p0, Lc8/Fhb;->this$0:Lc8/Hhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lc8/Fhb;->this$0:Lc8/Hhb;

    invoke-static {v0}, Lc8/Hhb;->access$000(Lc8/Hhb;)Lc8/wgb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lc8/Fhb;->this$0:Lc8/Hhb;

    invoke-static {v0}, Lc8/Hhb;->access$000(Lc8/Hhb;)Lc8/wgb;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "service register fail"

    invoke-interface {v0, v1, v2}, Lc8/wgb;->onFailure(ILjava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method
