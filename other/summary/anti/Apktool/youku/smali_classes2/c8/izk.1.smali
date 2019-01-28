.class public Lc8/izk;
.super Ljava/lang/Object;
.source "OfflineSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfflineSubscribInfo"
.end annotation


# instance fields
.field public codeStr:I

.field public desStr:Ljava/lang/String;

.field final synthetic this$0:Lc8/jzk;


# direct methods
.method public constructor <init>(Lc8/jzk;)V
    .locals 1
    .param p1, "this$0"    # Lc8/jzk;

    .prologue
    .line 220
    iput-object p1, p0, Lc8/izk;->this$0:Lc8/jzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lc8/izk;->codeStr:I

    .line 222
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/izk;->desStr:Ljava/lang/String;

    return-void
.end method
