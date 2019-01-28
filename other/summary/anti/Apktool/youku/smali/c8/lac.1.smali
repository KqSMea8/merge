.class public Lc8/lac;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/PEb;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/mac;)V
    .locals 0

    invoke-direct {p0}, Lc8/lac;-><init>()V

    return-void
.end method

.method public static a()Lc8/lac;
    .locals 1

    sget-object v0, Lc8/nac;->a:Lc8/lac;

    return-object v0
.end method


# virtual methods
.method public getHintList(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p1}, Lc8/pac;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public postHintList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p1, p2}, Lc8/pac;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
