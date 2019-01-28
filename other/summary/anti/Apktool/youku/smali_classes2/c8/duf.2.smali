.class public Lc8/duf;
.super Lc8/Ktf;
.source "ReportAckUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/euf;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/euf;


# direct methods
.method constructor <init>(Lc8/euf;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/euf;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "isAckReq"    # Z
    .param p4, "reqType"    # Ljava/lang/String;
    .param p5, "retryMaxNum"    # I

    .prologue
    .line 29
    iput-object p1, p0, Lc8/duf;->this$0:Lc8/euf;

    invoke-direct {p0, p2, p3, p4, p5}, Lc8/Ktf;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getReqParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getReqPostBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lc8/duf;->this$0:Lc8/euf;

    iget-object v0, v0, Lc8/euf;->val$reqBodyObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
