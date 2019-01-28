.class public Lc8/lYf;
.super Ljava/lang/Object;
.source "DOMActionContextImpl.java"

# interfaces
.implements Lc8/sag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mYf;->accept(Lc8/HYf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/mYf;

.field final synthetic val$copy:Lc8/HYf;


# direct methods
.method constructor <init>(Lc8/mYf;Lc8/HYf;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lc8/lYf;->this$1:Lc8/mYf;

    iput-object p2, p0, Lc8/lYf;->val$copy:Lc8/HYf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lc8/lYf;->this$1:Lc8/mYf;

    iget-object v0, v0, Lc8/mYf;->this$0:Lc8/oYf;

    invoke-static {v0}, Lc8/oYf;->access$300(Lc8/oYf;)Lc8/Cag;

    move-result-object v0

    iget-object v1, p0, Lc8/lYf;->this$1:Lc8/mYf;

    iget-object v1, v1, Lc8/mYf;->this$0:Lc8/oYf;

    invoke-static {v1}, Lc8/oYf;->access$200(Lc8/oYf;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/lYf;->val$copy:Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/lYf;->val$copy:Lc8/HYf;

    invoke-virtual {v0, v1, v2, v3}, Lc8/Cag;->setLayout(Ljava/lang/String;Ljava/lang/String;Lc8/HYf;)V

    .line 277
    iget-object v0, p0, Lc8/lYf;->val$copy:Lc8/HYf;

    invoke-virtual {v0}, Lc8/HYf;->getExtra()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lc8/lYf;->this$1:Lc8/mYf;

    iget-object v0, v0, Lc8/mYf;->this$0:Lc8/oYf;

    invoke-static {v0}, Lc8/oYf;->access$300(Lc8/oYf;)Lc8/Cag;

    move-result-object v0

    iget-object v1, p0, Lc8/lYf;->this$1:Lc8/mYf;

    iget-object v1, v1, Lc8/mYf;->this$0:Lc8/oYf;

    invoke-static {v1}, Lc8/oYf;->access$200(Lc8/oYf;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/lYf;->val$copy:Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/lYf;->val$copy:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getExtra()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/Cag;->setExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string/jumbo v0, "setLayout & setExtra"

    return-object v0
.end method
