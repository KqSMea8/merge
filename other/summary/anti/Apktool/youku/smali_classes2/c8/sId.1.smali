.class public final Lc8/sId;
.super Lc8/KId;
.source "HttpURLConnectionCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tId;->createOkBody(Ljava/net/HttpURLConnection;)Lc8/KId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lc8/AJd;

.field final synthetic val$urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Lc8/AJd;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc8/sId;->val$urlConnection:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lc8/sId;->val$body:Lc8/AJd;

    invoke-direct {p0}, Lc8/KId;-><init>()V

    return-void
.end method


# virtual methods
.method public source()Lc8/AJd;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc8/sId;->val$body:Lc8/AJd;

    return-object v0
.end method
