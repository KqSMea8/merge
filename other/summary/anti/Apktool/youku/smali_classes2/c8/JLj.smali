.class public Lc8/JLj;
.super Lc8/rHf;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KLj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TlogCommandListener4Godeye"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method private constructor <init>(Lc8/KLj;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lc8/JLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Lc8/rHf;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/KLj;Lc8/uLj;)V
    .locals 0
    .param p1, "x0"    # Lc8/KLj;
    .param p2, "x1"    # Lc8/uLj;

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lc8/JLj;-><init>(Lc8/KLj;)V

    return-void
.end method


# virtual methods
.method public parserCommand(Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 736
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    const-string/jumbo v1, "customData"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fWb;->handleRemoteCommand(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method
