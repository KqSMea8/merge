.class public Lc8/cff;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lc8/aff;

.field final synthetic b:Lc8/bff;


# direct methods
.method constructor <init>(Lc8/bff;Lc8/aff;)V
    .locals 0

    iput-object p1, p0, Lc8/cff;->b:Lc8/bff;

    iput-object p2, p0, Lc8/cff;->a:Lc8/aff;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lc8/cff;->b:Lc8/bff;

    iget-object v1, p0, Lc8/cff;->a:Lc8/aff;

    invoke-static {v0, v1}, Lc8/bff;->a(Lc8/bff;Lc8/aff;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/cff;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
