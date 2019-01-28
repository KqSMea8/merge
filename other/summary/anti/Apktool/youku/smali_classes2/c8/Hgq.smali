.class public interface abstract Lc8/Hgq;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# static fields
.field public static final DEFAULT:Lc8/Hgq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lc8/Ggq;

    invoke-direct {v0}, Lc8/Ggq;-><init>()V

    sput-object v0, Lc8/Hgq;->DEFAULT:Lc8/Hgq;

    return-void
.end method


# virtual methods
.method public abstract handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
.end method
