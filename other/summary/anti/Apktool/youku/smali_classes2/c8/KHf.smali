.class public Lc8/KHf;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtopResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OHf;


# direct methods
.method public constructor <init>(Lc8/OHf;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lc8/KHf;->this$0:Lc8/OHf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 279
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 281
    .local v0, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-static {}, Lc8/OHf;->access$800()Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-static {}, Lc8/OHf;->access$800()Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-static {}, Lc8/OHf;->access$800()Ljava/lang/String;

    goto :goto_0
.end method
