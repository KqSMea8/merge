.class public Lc8/mJ;
.super Ljava/lang/Object;
.source "TaobaoNetworkAdapter.java"

# interfaces
.implements Lc8/oN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nJ;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nJ;


# direct methods
.method constructor <init>(Lc8/nJ;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lc8/mJ;->this$0:Lc8/nJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCache(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "weex"

    const-string/jumbo v1, "f-refer"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
