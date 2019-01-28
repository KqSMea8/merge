.class public Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lc8/lGb;
    .locals 2

    const-string/jumbo v0, "updateParameter"

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc8/oGb;

    invoke-direct {v0, p0}, Lc8/oGb;-><init>(Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
