.class public Lc8/Lwb;
.super Lc8/Rxb;
.source "PageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qwb;->processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Rxb",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lc8/lwb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qwb;


# direct methods
.method constructor <init>(Lc8/Qwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qwb;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/Lwb;->this$0:Lc8/Qwb;

    invoke-direct {p0}, Lc8/Rxb;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic cancel(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lc8/Lwb;->cancel(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method protected cancel(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
