.class public Lc8/ANf;
.super Ljava/lang/Object;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# static fields
.field public static final bala:Lc8/ANf;

.field public static final detail:Lc8/ANf;

.field public static final home:Lc8/ANf;

.field public static final non:Lc8/ANf;

.field public static final search:Lc8/ANf;

.field public static final shop:Lc8/ANf;

.field public static final tbchannel:Lc8/ANf;

.field public static final weapp:Lc8/ANf;

.field public static final weappsharpen:Lc8/ANf;

.field public static final weitao:Lc8/ANf;


# instance fields
.field mArea:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "search"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->search:Lc8/ANf;

    .line 19
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "detail"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->detail:Lc8/ANf;

    .line 20
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "shop"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->shop:Lc8/ANf;

    .line 21
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "weitao"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->weitao:Lc8/ANf;

    .line 22
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "weapp"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->weapp:Lc8/ANf;

    .line 23
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "weappsharpen"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->weappsharpen:Lc8/ANf;

    .line 24
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "bala"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->bala:Lc8/ANf;

    .line 25
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "home"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->home:Lc8/ANf;

    .line 26
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "tbchannel"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->tbchannel:Lc8/ANf;

    .line 27
    new-instance v0, Lc8/ANf;

    const-string/jumbo v1, "default"

    invoke-direct {v0, v1}, Lc8/ANf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/ANf;->non:Lc8/ANf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ANf;->mArea:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lc8/ANf;->mArea:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/ANf;->mArea:Ljava/lang/String;

    return-object v0
.end method
