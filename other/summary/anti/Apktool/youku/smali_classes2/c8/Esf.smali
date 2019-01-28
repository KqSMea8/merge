.class public Lc8/Esf;
.super Lc8/Mtf;
.source "ConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jsf;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Mtf",
        "<",
        "Lcom/taobao/orange/model/ConfigDO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jsf;


# direct methods
.method constructor <init>(Lc8/Jsf;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jsf;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "retryMaxNum"    # I

    .prologue
    .line 292
    iput-object p1, p0, Lc8/Esf;->this$0:Lc8/Jsf;

    invoke-direct {p0, p2, p3, p4}, Lc8/Mtf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected parseResContent(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 295
    const-class v0, Lcom/taobao/orange/model/ConfigDO;

    invoke-static {p1, v0}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/ConfigDO;

    return-object v0
.end method

.method protected bridge synthetic parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lc8/Esf;->parseResContent(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object v0

    return-object v0
.end method
