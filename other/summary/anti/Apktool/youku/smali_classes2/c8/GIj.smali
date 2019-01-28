.class public Lc8/GIj;
.super Ljava/lang/Object;
.source "UrlRepositoryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HIj;->onConfigUpdate(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/HIj;


# direct methods
.method constructor <init>(Lc8/HIj;)V
    .locals 0
    .param p1, "this$1"    # Lc8/HIj;

    .prologue
    .line 38
    iput-object p1, p0, Lc8/GIj;->this$1:Lc8/HIj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lc8/GIj;->this$1:Lc8/HIj;

    iget-object v0, v0, Lc8/HIj;->this$0:Lc8/IIj;

    iget-object v1, p0, Lc8/GIj;->this$1:Lc8/HIj;

    iget-object v1, v1, Lc8/HIj;->this$0:Lc8/IIj;

    invoke-static {v1}, Lc8/IIj;->access$000(Lc8/IIj;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/IIj;->access$100(Lc8/IIj;Ljava/util/List;)V

    .line 42
    return-void
.end method
