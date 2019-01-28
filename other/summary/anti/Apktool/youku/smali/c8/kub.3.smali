.class public Lc8/kub;
.super Ljava/lang/Object;
.source "WXExpressionBindingV2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lub;->onActivityResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lub;


# direct methods
.method constructor <init>(Lc8/lub;)V
    .locals 0
    .param p1, "this$0"    # Lc8/lub;

    .prologue
    .line 131
    iput-object p1, p0, Lc8/kub;->this$0:Lc8/lub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lc8/kub;->this$0:Lc8/lub;

    invoke-static {v0}, Lc8/lub;->access$000(Lc8/lub;)Lc8/Jrb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lc8/kub;->this$0:Lc8/lub;

    invoke-static {v0}, Lc8/lub;->access$000(Lc8/lub;)Lc8/Jrb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Jrb;->onActivityResume()V

    .line 137
    :cond_0
    return-void
.end method
