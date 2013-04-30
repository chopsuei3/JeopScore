.class public final Lcom/google/appinventor/components/runtime/WebViewer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "WebViewer.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for viewing Web pages.  The Home URL can be specified in the Designer or in the Blocks Editor.  The view can be set to follow links when they are tapped, and users can fill in Web forms. Warning: This is not a full browser.  For example, pressing the phone\'s hardware Back key will exit the app, rather than move back in the browser history."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;
    }
.end annotation


# instance fields
.field private followLinks:Z

.field private homeUrl:Ljava/lang/String;

.field private final webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .parameter "container"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 66
    new-instance v0, Landroid/webkit/WebView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Lcom/google/appinventor/components/runtime/WebViewer$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 72
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewer$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 93
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->HomeUrl(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->Width(I)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->Height(I)V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/WebViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    return v0
.end method


# virtual methods
.method public CanGoBack()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go back in the history list."
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public CanGoForward()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go forward in the history list."
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public CurrentPageTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title of the page currently viewed"
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public CurrentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page currently viewed.   This could be different from the Home URL if new pages were visited by following links."
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public FollowLinks(Z)V
    .locals 0
    .parameter "follow"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 211
    return-void
.end method

.method public FollowLinks()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether to follow links when they are tapped in the WebViewer.  If you follow links, you can use GoBack and GoForward to navigate the browser history. "
    .end annotation

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    return v0
.end method

.method public GoBack()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go back to the previous page in the history list.  Does nothing if there is no previous page."
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 235
    :cond_0
    return-void
.end method

.method public GoForward()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go forward to the next page in the history list.   Does nothing if there is no next page."
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 247
    :cond_0
    return-void
.end method

.method public GoHome()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the home URL page.  This happens automatically when the home URL is changed."
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public GoToUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load the page at the given URL."
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public Height(I)V
    .locals 1
    .parameter "height"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 129
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 130
    const/4 p1, -0x2

    .line 132
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 133
    return-void
.end method

.method public HomeUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page the WebViewer should initially open to.  Setting this will load the page."
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public HomeUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public Width(I)V
    .locals 1
    .parameter "width"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 120
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 121
    const/4 p1, -0x2

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 124
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    return-object v0
.end method
