.class public Lc8/sff;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc8/rff;


# direct methods
.method constructor <init>(Lc8/rff;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/sff;->b:Lc8/rff;

    iput-object p2, p0, Lc8/sff;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lc8/sff;->a:Ljava/lang/String;

    invoke-static {v0}, Lc8/Kff;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/sff;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
