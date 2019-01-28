.class public final Lc8/gOc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hOc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lc8/hOc;


# direct methods
.method private constructor <init>(Lc8/hOc;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lc8/gOc;->c:Lc8/hOc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/gOc;->a:Ljava/lang/String;

    .line 282
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/gOc;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lc8/hOc;B)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lc8/gOc;-><init>(Lc8/hOc;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lc8/gOc;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lc8/gOc;->a:Ljava/lang/String;

    .line 290
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lc8/gOc;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lc8/gOc;->b:Ljava/lang/String;

    .line 298
    return-void
.end method
