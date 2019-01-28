.class public final Lc8/HDd;
.super Ljava/lang/Object;
.source "DynamicPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IDd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "copy"

    iput-object v0, p0, Lc8/HDd;->f:Ljava/lang/String;

    iput-object p1, p0, Lc8/HDd;->a:Ljava/lang/String;

    iput-object p2, p0, Lc8/HDd;->b:Ljava/lang/String;

    iput-object p3, p0, Lc8/HDd;->c:Ljava/lang/String;

    iput-object p4, p0, Lc8/HDd;->d:Ljava/lang/String;

    iput-object p5, p0, Lc8/HDd;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lc8/HDd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/HDd;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lc8/HDd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/HDd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lc8/HDd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/HDd;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lc8/HDd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/HDd;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lc8/HDd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/HDd;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lc8/HDd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/HDd;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc8/HDd;
    .locals 0

    iput-object p1, p0, Lc8/HDd;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lc8/IDd;
    .locals 1

    new-instance v0, Lc8/IDd;

    invoke-direct {v0, p0}, Lc8/IDd;-><init>(Lc8/HDd;)V

    return-object v0
.end method
