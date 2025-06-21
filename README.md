# 🚀 Angular Skills Dashboard

> **A comprehensive Angular 19+ learning project that combines 10 mini-applications into one unified dashboard to master modern Angular development.**

![Angular](https://img.shields.io/badge/Angular-19+-red?style=for-the-badge&logo=angular)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0+-blue?style=for-the-badge&logo=typescript)
![Tailwind](https://img.shields.io/badge/Tailwind-CSS-cyan?style=for-the-badge&logo=tailwindcss)

## 🎯 Project Overview

This project is designed as a **hands-on learning experience** to master Angular 19+ features through practical mini-applications. Each mini-app focuses on specific Angular concepts while building towards a cohesive, production-ready dashboard.

### 🎨 Dashboard Features
- **Responsive navigation** with route-based mini-app switching
- **Unified theme system** with dark/light mode
- **Shared state management** using Angular Signals
- **Progressive Web App** capabilities
- **Performance optimized** with lazy loading and standalone components

---

## 🏗️ Mini-Applications & Learning Objectives

### 1. 📝 Todo Manager
**🎯 Skills Practiced:**
- ✅ **Angular Signals** - Modern reactive state management
- ✅ **Reactive Forms** - Form building and validation
- ✅ **Local Storage** - Data persistence
- ✅ **Component lifecycle** - ngOnInit, OnDestroy

**🔧 Features:**
- Create, read, update, delete todos
- Filter by status (all, active, completed)
- Mark all as complete/incomplete
- Todo counter and progress tracking
- Persistent storage across sessions

**📚 Angular Concepts:**
```typescript
// Example: Using Signals for todo state
todosSignal = signal<Todo[]>([]);
completedCount = computed(() => 
  this.todosSignal().filter(todo => todo.completed).length
);
```

### 2. 🌤️ Weather Dashboard
**🎯 Skills Practiced:**
- ✅ **HttpClient** - API communication
- ✅ **HTTP Interceptors** - Request/response handling
- ✅ **Error handling** - Try-catch, error states
- ✅ **Loading states** - UI feedback patterns
- ✅ **Environment configuration** - API keys management

**🔧 Features:**
- Current weather display
- 5-day forecast
- City search functionality
- Weather icons and animations
- Error handling for failed requests
- Loading spinners and skeleton screens

**📚 Angular Concepts:**
```typescript
// Example: HTTP interceptor for loading states
export class LoadingInterceptor implements HttpInterceptor {
  intercept(req: HttpRequest<any>, next: HttpHandler) {
    // Show loading indicator
    return next.handle(req).pipe(
      finalize(() => {/* Hide loading */})
    );
  }
}
```

### 3. 🍳 Recipe Book
**🎯 Skills Practiced:**
- ✅ **Angular Router** - Navigation and route parameters
- ✅ **Lazy loading** - Performance optimization
- ✅ **Standalone components** - Modern Angular architecture
- ✅ **Route guards** - Navigation protection
- ✅ **Nested routing** - Complex navigation structures

**🔧 Features:**
- Recipe list with search and filtering
- Detailed recipe view with ingredients
- Add/edit recipe forms
- Recipe categories and tags
- Image upload and preview
- Print-friendly recipe cards

**📚 Angular Concepts:**
```typescript
// Example: Lazy loaded route with standalone component
{
  path: 'recipes',
  loadComponent: () => import('./recipe-list.component')
    .then(c => c.RecipeListComponent)
}
```

### 4. 💬 Chat Simulator
**🎯 Skills Practiced:**
- ✅ **WebSocket communication** (or mock real-time)
- ✅ **Signals for real-time updates** - Reactive UI
- ✅ **Scroll management** - Auto-scroll, infinite scroll
- ✅ **Date/time handling** - Message timestamps
- ✅ **Animation** - Message entrance effects

**🔧 Features:**
- Real-time message simulation
- Multiple chat rooms
- User avatars and names
- Message timestamps
- Typing indicators
- Emoji support
- Message history persistence

**📚 Angular Concepts:**
```typescript
// Example: Real-time message updates with Signals
messagesSignal = signal<Message[]>([]);
effect(() => {
  // Auto-scroll when new messages arrive
  this.scrollToBottom();
});
```

### 5. 🎨 Theme Switcher
**🎯 Skills Practiced:**
- ✅ **CSS custom properties** - Dynamic theming
- ✅ **Tailwind CSS** - Utility-first styling
- ✅ **Signals for state** - Theme persistence
- ✅ **Renderer2** - DOM manipulation
- ✅ **Local storage** - Theme preference saving

**🔧 Features:**
- Dark/light mode toggle
- Multiple color schemes
- System preference detection
- Smooth theme transitions
- Per-user theme persistence
- Theme preview components

**📚 Angular Concepts:**
```typescript
// Example: Theme management with Signals
themeSignal = signal<'light' | 'dark'>('light');
effect(() => {
  document.documentElement.setAttribute('data-theme', this.themeSignal());
});
```

### 6. 🎮 Tic Tac Toe Game
**🎯 Skills Practiced:**
- ✅ **Component communication** - Parent-child data flow
- ✅ **Game state management** - Complex state logic
- ✅ **Input/Output decorators** - Component API
- ✅ **Change detection** - Performance optimization
- ✅ **Pure functions** - Game logic separation

**🔧 Features:**
- Interactive game board
- Win detection algorithms
- Score tracking
- Game reset functionality
- AI opponent (simple)
- Game history
- Responsive design for mobile

**📚 Angular Concepts:**
```typescript
// Example: Component communication
@Component({
  template: `<game-board (move)="handleMove($event)" [board]="gameState()" />`
})
export class TicTacToeComponent {
  gameState = signal<GameBoard>(createEmptyBoard());
}
```

### 7. 📊 Chart Visualizer
**🎯 Skills Practiced:**
- ✅ **Third-party library integration** - Chart.js/D3.js
- ✅ **Dynamic data binding** - Reactive charts
- ✅ **Performance optimization** - Chart updates
- ✅ **Responsive design** - Mobile-friendly charts
- ✅ **Data transformation** - Chart data formatting

**🔧 Features:**
- Multiple chart types (bar, line, pie, doughnut)
- Dynamic data updates
- Interactive tooltips
- Export functionality (PNG, PDF)
- Responsive chart sizing
- Animation and transitions
- Data filtering and grouping

**📚 Angular Concepts:**
```typescript
// Example: Dynamic chart updates with Signals
chartData = computed(() => 
  this.rawData().map(item => ({
    label: item.name,
    value: item.count
  }))
);
```

### 8. 📋 Form Playground
**🎯 Skills Practiced:**
- ✅ **Reactive Forms** - FormBuilder, FormGroups
- ✅ **Custom validators** - Business logic validation
- ✅ **Dynamic forms** - Runtime form generation
- ✅ **Nested forms** - Complex form structures
- ✅ **Form arrays** - Dynamic lists

**🔧 Features:**
- Multi-step form wizard
- Dynamic field addition/removal
- Custom validation rules
- Form field dependencies
- Auto-save and restoration
- Form templates and presets
- Accessibility compliance

**📚 Angular Concepts:**
```typescript
// Example: Dynamic form with custom validators
userForm = this.fb.group({
  personal: this.fb.group({
    name: ['', [Validators.required, this.customNameValidator]],
    email: ['', [Validators.required, Validators.email]]
  }),
  addresses: this.fb.array([])
});
```

### 9. 📱 PWA Features
**🎯 Skills Practiced:**
- ✅ **Service Workers** - Offline functionality
- ✅ **PWA manifest** - Installable app
- ✅ **Caching strategies** - Performance optimization
- ✅ **Background sync** - Offline-first approach
- ✅ **Push notifications** - User engagement

**🔧 Features:**
- Offline mode support
- App installation prompt
- Background data sync
- Push notification system
- App update notifications
- Offline indicator
- Cache management

**📚 Angular Concepts:**
```typescript
// Example: Service worker integration
constructor(private swUpdate: SwUpdate) {
  if (swUpdate.isEnabled) {
    swUpdate.available.subscribe(() => {
      // Prompt user to update app
    });
  }
}
```

### 10. 📁 File Upload & Preview
**🎯 Skills Practiced:**
- ✅ **File API** - File handling in browser
- ✅ **Drag and drop** - Advanced user interactions
- ✅ **Form integration** - File inputs with reactive forms
- ✅ **Progress tracking** - Upload progress indicators
- ✅ **File validation** - Type and size validation

**🔧 Features:**
- Drag and drop file uploads
- Image preview with thumbnails
- PDF preview integration
- Upload progress tracking
- File type validation
- Multiple file selection
- File compression options

**📚 Angular Concepts:**
```typescript
// Example: File upload with progress tracking
uploadFiles(files: FileList) {
  const uploadProgress = signal(0);
  // Handle file upload with progress updates
}
```

---

## 🏛️ Technical Architecture

### **🧩 Project Structure**
```
src/
├── app/
│   ├── core/                    # Singleton services, guards
│   │   ├── services/
│   │   │   ├── theme.service.ts
│   │   │   ├── storage.service.ts
│   │   │   └── notification.service.ts
│   │   └── guards/
│   ├── shared/                  # Reusable components
│   │   ├── components/
│   │   │   ├── header/
│   │   │   ├── sidebar/
│   │   │   └── loading-spinner/
│   │   └── pipes/
│   ├── features/                # Mini-applications
│   │   ├── todo-manager/
│   │   ├── weather-dashboard/
│   │   ├── recipe-book/
│   │   ├── chat-simulator/
│   │   ├── theme-switcher/
│   │   ├── tic-tac-toe/
│   │   ├── chart-visualizer/
│   │   ├── form-playground/
│   │   ├── pwa-features/
│   │   └── file-upload/
│   └── layouts/                 # Layout components
│       ├── dashboard-layout/
│       └── full-screen-layout/
├── assets/                      # Static files
└── environments/                # Environment configs
```

### **🔄 State Management Strategy**
- **Global State**: Angular Signals for theme, user preferences
- **Feature State**: Local Signals within each mini-app
- **Persistent State**: Custom storage service with localStorage
- **Shared State**: Cross-feature communication via services

### **🎨 Styling Approach**
- **Base**: Tailwind CSS for utility-first styling
- **Components**: Angular Material for complex components
- **Themes**: CSS custom properties for dynamic theming
- **Responsive**: Mobile-first responsive design

### **⚡ Performance Optimizations**
- **Lazy Loading**: Each mini-app loaded on demand
- **Standalone Components**: Reduced bundle size
- **OnPush Strategy**: Optimized change detection
- **Virtual Scrolling**: For large lists
- **Image Optimization**: WebP format, lazy loading

---

## 🚀 Getting Started

### **Prerequisites**
- Node.js 18.19+ or 20.9+
- Angular CLI 19+
- Modern browser with ES2022 support

### **Installation**
```bash
# Clone the repository
git clone <repository-url>
cd angular-skills-dashboard

# Install dependencies
npm install

# Start development server
npm start

# Access the application
open http://localhost:4200
```

### **Development Scripts**
```bash
npm run start          # Development server
npm run start:test     # Test environment
npm run build          # Production build
npm run test           # Run unit tests
npm run e2e            # Run e2e tests
npm run lint           # Code linting
npm run format         # Code formatting
```

---

## 📈 Learning Path

### **🥉 Beginner Level (Start Here)**
1. **Theme Switcher** - Learn Signals basics
2. **Todo Manager** - Forms and local storage
3. **Tic Tac Toe** - Component communication

### **🥈 Intermediate Level**
4. **Weather Dashboard** - HTTP and error handling
5. **Recipe Book** - Routing and lazy loading
6. **Chart Visualizer** - Third-party integration

### **🥇 Advanced Level**
7. **Chat Simulator** - Real-time features
8. **Form Playground** - Complex forms
9. **File Upload** - File API and validation
10. **PWA Features** - Service workers and offline

---

## 🔧 Development Guidelines

### **📝 Code Standards**
- **TypeScript**: Strict mode enabled
- **ESLint**: Angular recommended rules
- **Prettier**: Consistent code formatting
- **Husky**: Pre-commit hooks

### **🧪 Testing Strategy**
- **Unit Tests**: Jest for component testing
- **Integration Tests**: Angular Testing Library
- **E2E Tests**: Cypress for user flows
- **Coverage**: Minimum 80% code coverage

### **🔒 Security Practices**
- **Content Security Policy**: XSS protection
- **Input Sanitization**: User input validation
- **Environment Variables**: Secure API key storage
- **Dependency Auditing**: Regular security updates

---

## 📚 Resources & References

### **📖 Angular Documentation**
- [Angular Signals Guide](https://angular.dev/guide/signals)
- [Standalone Components](https://angular.dev/guide/standalone-components)
- [Angular Forms](https://angular.dev/guide/forms)
- [Angular PWA Guide](https://angular.dev/ecosystem/service-workers)

### **🛠️ Tools & Libraries**
- [Tailwind CSS](https://tailwindcss.com/)
- [Angular Material](https://material.angular.io/)
- [Chart.js](https://www.chartjs.org/)
- [Cypress Testing](https://www.cypress.io/)

### **🎯 Learning Objectives Checklist**
- [ ] Master Angular 19+ Signals
- [ ] Build responsive, accessible UIs
- [ ] Implement real-time features
- [ ] Optimize for performance
- [ ] Create production-ready PWAs
- [ ] Practice modern Angular patterns
- [ ] Develop testing strategies
- [ ] Learn state management
- [ ] Handle complex forms
- [ ] Integrate third-party libraries
