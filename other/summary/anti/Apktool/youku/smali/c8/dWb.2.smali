.class public Lc8/dWb;
.super Ljava/lang/Object;
.source "Godeye.java"

# interfaces
.implements Lc8/PHf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fWb;->upload(Lc8/cWb;Ljava/lang/String;Lc8/qWb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fWb;

.field final synthetic val$fileUploadListener:Lc8/qWb;


# direct methods
.method constructor <init>(Lc8/fWb;Lc8/qWb;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lc8/dWb;->this$0:Lc8/fWb;

    iput-object p2, p0, Lc8/dWb;->val$fileUploadListener:Lc8/qWb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errType"    # Ljava/lang/String;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lc8/dWb;->val$fileUploadListener:Lc8/qWb;

    invoke-interface {v0, p1, p2, p3}, Lc8/qWb;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onSucessed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "originalFilePath"    # Ljava/lang/String;
    .param p2, "urlLocation"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lc8/dWb;->val$fileUploadListener:Lc8/qWb;

    invoke-interface {v0, p1, p2}, Lc8/qWb;->onSucess(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method
