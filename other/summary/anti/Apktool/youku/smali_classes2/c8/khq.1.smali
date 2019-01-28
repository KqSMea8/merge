.class public final Lc8/khq;
.super Ljava/lang/Object;
.source "ResponseWrapper.java"


# instance fields
.field final response:Lc8/Whq;

.field final responseBody:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/Whq;Ljava/lang/Object;)V
    .locals 0
    .param p1, "response"    # Lc8/Whq;
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/khq;->response:Lc8/Whq;

    .line 32
    iput-object p2, p0, Lc8/khq;->responseBody:Ljava/lang/Object;

    .line 33
    return-void
.end method
