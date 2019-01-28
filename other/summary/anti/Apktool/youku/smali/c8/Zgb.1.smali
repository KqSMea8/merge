.class public Lc8/Zgb;
.super Ljava/lang/Object;
.source "RpcResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public actionType:Ljava/lang/String;

.field public code:I

.field public codeGroup:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public msgCode:Ljava/lang/String;

.field public msgInfo:Ljava/lang/String;

.field public returnValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    .local p0, "this":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
