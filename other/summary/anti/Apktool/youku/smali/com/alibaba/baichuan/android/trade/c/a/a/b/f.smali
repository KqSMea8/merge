.class public Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field private transient g:[Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http"

    aput-object v1, v0, v2

    const-string/jumbo v1, "https"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "tbopen"

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc8/wGb;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->e:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lc8/wGb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc8/wGb;->f()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->e:[Ljava/lang/String;

    array-length v6, v5

    move v1, v3

    :goto_1
    if-ge v1, v6, :cond_b

    aget-object v7, v5, v1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v2

    :goto_2
    if-eqz v1, :cond_0

    :goto_3
    const-string/jumbo v1, "all"

    iget-object v4, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lc8/wGb;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->f:[Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_4
    iget-object v4, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->f:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_5
    or-int/2addr v1, v4

    if-nez v1, :cond_0

    const-string/jumbo v1, "pattern"

    iget-object v4, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->g:[Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->f:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->g:[Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->g:[Ljava/util/regex/Pattern;

    array-length v1, v0

    move v0, v3

    :goto_6
    if-ge v0, v1, :cond_7

    iget-object v4, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->g:[Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->f:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v4, v3

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->g:[Ljava/util/regex/Pattern;

    array-length v4, v1

    move v0, v3

    :goto_7
    if-ge v0, v4, :cond_0

    aget-object v5, v1, v0

    invoke-virtual {p1}, Lc8/wGb;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v2

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    const-string/jumbo v1, "start"

    iget-object v4, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/alibaba/baichuan/android/trade/c/a/a/b/f;->f:[Ljava/lang/String;

    array-length v5, v4

    move v1, v3

    :goto_8
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v3, v2

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    move v1, v3

    goto/16 :goto_2
.end method
