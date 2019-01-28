.class public Lc8/tFb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uFb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/tFb;->a:Ljava/lang/String;

    iput-object p2, p0, Lc8/tFb;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/tFb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lc8/tFb;->b:Ljava/lang/ClassLoader;

    return-object v0
.end method
