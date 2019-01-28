.class public Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;
.super Lcom/alibaba/baichuan/android/trade/c/a/a/b/g;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public f:Ljava/lang/String;

.field public g:[I

.field public h:[Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lc8/rGb;

.field public k:Ljava/util/Map;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/g;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lc8/qGb;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc8/qGb;

    invoke-direct {v0, p0}, Lc8/qGb;-><init>(Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
