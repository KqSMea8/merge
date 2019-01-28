.class public Lc8/Qub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rub;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Rub;


# direct methods
.method constructor <init>(Lc8/Rub;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Rub;

    .prologue
    .line 189
    iput-object p1, p0, Lc8/Qub;->this$1:Lc8/Rub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lc8/Qub;->this$1:Lc8/Rub;

    iget-object v0, v0, Lc8/Rub;->this$0:Lc8/bvb;

    iget-object v1, p0, Lc8/Qub;->this$1:Lc8/Rub;

    iget-object v1, v1, Lc8/Rub;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lc8/Qub;->this$1:Lc8/Rub;

    iget-object v2, v2, Lc8/Rub;->val$ignoreParams:Ljava/util/List;

    iget-object v3, p0, Lc8/Qub;->this$1:Lc8/Rub;

    iget-object v3, v3, Lc8/Rub;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/bvb;->access$100(Lc8/bvb;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 193
    return-void
.end method
