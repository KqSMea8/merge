.class public Lc8/pFb;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lc8/dFb;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lc8/aFb;


# direct methods
.method constructor <init>(Lc8/aFb;Lc8/dFb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/pFb;->c:Lc8/aFb;

    iput-object p2, p0, Lc8/pFb;->a:Lc8/dFb;

    iput-object p3, p0, Lc8/pFb;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lc8/pFb;->c:Lc8/aFb;

    iget-object v1, p0, Lc8/pFb;->a:Lc8/dFb;

    iget-object v2, p0, Lc8/pFb;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/aFb;->a(Lc8/aFb;Lc8/dFb;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/pFb;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
