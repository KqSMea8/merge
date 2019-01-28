.class public final Lc8/FLc;
.super Lc8/VLc;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lc8/VLc;-><init>()V

    iput-object p1, p0, Lc8/FLc;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lc8/FLc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc8/FLc;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lc8/tLc;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/tLc;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lc8/WLc;

    new-instance v1, Lc8/GLc;

    invoke-direct {v1, p0, p2}, Lc8/GLc;-><init>(Lc8/FLc;Lc8/tLc;)V

    invoke-direct {v0, v1}, Lc8/WLc;-><init>(Lc8/ELc;)V

    invoke-virtual {v0, p1}, Lc8/WLc;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
