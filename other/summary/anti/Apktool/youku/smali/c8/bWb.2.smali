.class public Lc8/bWb;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field public extraData:Lcom/alibaba/fastjson/JSONObject;

.field public final reason:Ljava/lang/String;

.field public final responseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraData"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lc8/bWb;->responseCode:I

    .line 30
    iput-object p2, p0, Lc8/bWb;->reason:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lc8/bWb;->extraData:Lcom/alibaba/fastjson/JSONObject;

    .line 32
    return-void
.end method
