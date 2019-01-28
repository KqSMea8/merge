.class public Lc8/twb;
.super Landroid/support/v4/util/LruCache;
.source "PackageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/aliweex/cache/Package$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;
    .param p2, "x0"    # I

    .prologue
    .line 94
    iput-object p1, p0, Lc8/twb;->this$0:Lc8/Awb;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 94
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/alibaba/aliweex/cache/Package$Info;

    invoke-virtual {p0, p1, p2}, Lc8/twb;->sizeOf(Ljava/lang/String;Lcom/alibaba/aliweex/cache/Package$Info;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/alibaba/aliweex/cache/Package$Info;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 97
    iget-object v0, p2, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method
