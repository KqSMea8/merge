.class public Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/election/ElectionServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElectionResult"
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public retry:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    return-void
.end method
