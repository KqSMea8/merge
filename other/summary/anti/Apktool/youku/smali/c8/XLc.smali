.class public final Lc8/XLc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field protected a:Lc8/ELc;

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lc8/YLc;


# direct methods
.method public constructor <init>(Lc8/ELc;Ljava/lang/Class;Lc8/YLc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ELc;",
            "Ljava/lang/Class",
            "<*>;",
            "Lc8/YLc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/XLc;->a:Lc8/ELc;

    iput-object p2, p0, Lc8/XLc;->b:Ljava/lang/Class;

    iput-object p3, p0, Lc8/XLc;->c:Lc8/YLc;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc8/XLc;->c:Lc8/YLc;

    invoke-virtual {v0, p2, p3}, Lc8/YLc;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
