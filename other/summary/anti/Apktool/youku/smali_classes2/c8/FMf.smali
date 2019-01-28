.class public Lc8/FMf;
.super Ljava/lang/Object;
.source "MtopBusiness.java"

# interfaces
.implements Lc8/AMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GMf;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GMf;


# direct methods
.method constructor <init>(Lc8/GMf;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lc8/FMf;->this$0:Lc8/GMf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 279
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 0
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "pojo"    # Lc8/cOp;
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 275
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 283
    return-void
.end method
