.class public Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;
.super Lcom/alibaba/baichuan/android/trade/c/a/a/b/g;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/android/trade/c/a/a/a/d$a;
    }
.end annotation


# instance fields
.field public f:Ljava/lang/String;

.field public g:[I

.field public h:[Ljava/lang/String;

.field public i:Z

.field public j:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/c/a/a/b/g;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->i:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->j:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public a()Lc8/kGb;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc8/kGb;

    invoke-direct {v0, p0}, Lc8/kGb;-><init>(Lcom/alibaba/baichuan/android/trade/c/a/a/a/d;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
